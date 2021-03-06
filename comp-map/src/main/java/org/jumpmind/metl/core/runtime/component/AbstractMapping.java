/**
 * Licensed to JumpMind Inc under one or more contributor
 * license agreements.  See the NOTICE file distributed
 * with this work for additional information regarding
 * copyright ownership.  JumpMind Inc licenses this file
 * to you under the GNU General Public License, version 3.0 (GPLv3)
 * (the "License"); you may not use this file except in compliance
 * with the License.
 *
 * You should have received a copy of the GNU General Public License,
 * version 3.0 (GPLv3) along with this library; if not, see
 * <http://www.gnu.org/licenses/>.
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.jumpmind.metl.core.runtime.component;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.jumpmind.metl.core.model.ComponentModelSetting;

public abstract class AbstractMapping extends AbstractComponentRuntime {

    public final static String MODEL_OBJECT_MAPS_TO = "mapping.processor.model.object.maps.to";

    protected Map<String, Set<String>> getAttribToAttribMap() {
    		Map<String, Set<String>>attrToAttrMap = new HashMap<String, Set<String>>();
        List<ComponentModelSetting> modelSettings = getComponent().getModelSettings();
        for (ComponentModelSetting modelSetting : modelSettings) {
            if (modelSetting.getName().equalsIgnoreCase(MODEL_OBJECT_MAPS_TO)) {
                Set<String> targets = attrToAttrMap.get(modelSetting.getModelObjectId());
                if (targets == null) {
                    targets = new HashSet<String>(2);
                    attrToAttrMap.put(modelSetting.getModelObjectId(), targets);
                }
                targets.add(modelSetting.getValue());
            }
        }
        return attrToAttrMap;
    }  
}
